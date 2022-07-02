.class public Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
.super Ljava/lang/Object;
.source "SystemUIIndexMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mReceiver:Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;

.field private mTileSearchResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/indexsearch/Searchable;",
            ">;"
        }
    .end annotation
.end field

.field private mTileSearchables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/indexsearch/Searchable;",
            ">;"
        }
    .end annotation
.end field

.field private mTileSearchablesInAvailableArea:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/indexsearch/Searchable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0QIrxx9Pp5V5zOKGAJ6Gg5TBKkw(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchablesInAvailableArea:Ljava/util/LinkedHashMap;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mReceiver:Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;

    .line 63
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->clearTileSearchResults()V

    return-void
.end method

.method private clearTileSearchResults()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/indexsearch/Searchable;

    .line 177
    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getTileSpecForAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 178
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->setInstantTileListening(ZLjava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private getClassForTileInAvailableArea(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchablesInAvailableArea:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 170
    const-class p0, Lcom/android/systemui/indexsearch/SecCustomizerActivity;

    return-object p0

    .line 172
    :cond_0
    const-class p0, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;

    return-object p0
.end method

.method private getQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    return-object p1
.end method

.method private getResultIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.indexsearch.detailview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->getClassForTileInAvailableArea(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo p0, "tileSpec"

    .line 164
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getSimpleSearchResult(Ljava/lang/String;I)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    .locals 13

    .line 138
    new-instance v0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;

    invoke-direct {v0, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p2}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->setTotalCount(I)V

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "search result totalCount : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SystemUIIndexMediator"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/indexsearch/Searchable;

    .line 142
    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getIconUri()Landroid/net/Uri;

    move-result-object v4

    .line 143
    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchTitle()Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_0

    if-nez v9, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getTileSpecForAction()Ljava/lang/String;

    move-result-object v10

    .line 147
    invoke-direct {p0, v10}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->getResultIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 148
    new-instance v12, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;

    .line 149
    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchDescription()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;

    invoke-direct {v8, v11}, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;-><init>(Landroid/content/Intent;)V

    const-string v3, "content://com.android.systemui.indexsearch"

    move-object v2, v12

    move-object v5, v9

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;)V

    .line 151
    invoke-virtual {v0, v12}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->addResultItem(Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SearchResultItem;)V

    const/4 v1, 0x1

    .line 153
    invoke-direct {p0, v1, v10}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->setInstantTileListening(ZLjava/lang/String;)V

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "search result title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 64
    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    new-instance v1, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$1;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method private setInstantTileListening(ZLjava/lang/String;)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz p0, :cond_0

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setInstantTileListening(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateTileSearchResults(Ljava/lang/String;)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/indexsearch/Searchable;

    .line 124
    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchWords()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 127
    invoke-interface {v1}, Lcom/android/systemui/indexsearch/Searchable;->getSearchWords()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public search(Ljava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    .locals 2

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->getQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 102
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->clearTileSearchResults()V

    .line 103
    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->updateTileSearchResults(Ljava/lang/String;)V

    .line 105
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->getSimpleSearchResult(Ljava/lang/String;I)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 105
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-void
.end method

.method public setSearchableTiles(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/indexsearch/Searchable;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/indexsearch/Searchable;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 82
    iget-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchablesInAvailableArea:Ljava/util/LinkedHashMap;

    monitor-enter p1

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchablesInAvailableArea:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 84
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchablesInAvailableArea:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 85
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 81
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
