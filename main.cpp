//
//  main.cpp
//  并查集_看图是否有环
//
//  Created by 陈冉飞 on 2019/8/17.
//  Copyright © 2019 陈冉飞. All rights reserved.
//

#include <iostream>
using namespace std;
int a,b;
#include <cstring>
#define cl(a,b) memset(a,b,sizeof(a))
#define maxn 100010
int vis[maxn],fa[maxn];

int findfa(int x){
    if (fa[x] != x) fa[x] = findfa(fa[x]);
    return fa[x];
}

void merge(int x,int y){
    int fx = findfa(x),fy = findfa(y);
    if (fx != fy) fa[fy] = fx;
}

int main(int argc, const char * argv[]) {
    while (scanf("%d%d",&a,&b) && a!= -1) {
        cl(vis, 0);cl(fa, 0);
        fa[a] = a;fa[b] = b;
        vis[a] = 1;vis[b] = 1;
        merge(a,b);
        while (scanf("%d%d",&a,&b) && a+b) {
            if (!vis[a]) fa[a] = a;
            if (!vis[b]) fa[b] = b;
            vis[a] = 1;vis[b] = 1;
            merge(a,b);
        }
        for (int i = 1; i <= maxn; i++)
            if (vis[i]) cout<<i<<"   "<<fa[i]<<"  "<<endl;
    }
    return 0;
}
