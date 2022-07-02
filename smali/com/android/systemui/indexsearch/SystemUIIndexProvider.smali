.class public Lcom/android/systemui/indexsearch/SystemUIIndexProvider;
.super Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;
.source "SystemUIIndexProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

.field private mSearchAsyncTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;-><init>()V

    const-string v0, "SystemUIIndexProvider"

    .line 25
    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;Lcom/android/systemui/indexsearch/SystemUIIndexMediator;)Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    return-object p1
.end method

.method private isBlockedByDesktopMode()Z
    .locals 1

    .line 98
    const-class p0, Lcom/android/systemui/util/DesktopManager;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/DesktopManager;

    if-eqz p0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getSearchResult(Ljava/lang/String;ILandroid/os/CancellationSignal;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->isBlockedByDesktopMode()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 79
    :cond_0
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 80
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mSearchAsyncTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    if-eqz p0, :cond_2

    .line 81
    invoke-virtual {p0, p3}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 84
    :cond_1
    new-instance p2, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;Lcom/android/systemui/indexsearch/SystemUIIndexProvider$1;)V

    iput-object p2, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mSearchAsyncTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    const/4 p0, 0x1

    :try_start_0
    new-array p0, p0, [Ljava/lang/String;

    aput-object p1, p0, p3

    .line 86
    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 93
    :cond_2
    :goto_0
    new-instance p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public makeAppLaunchIntent()Landroid/content/Intent;
    .locals 2

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.indexsearch.detailview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public makeInAppSearchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 2

    .line 50
    new-instance v0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;Lcom/android/systemui/indexsearch/SystemUIIndexProvider$1;)V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mSearchAsyncTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    const/4 p0, 0x1

    return p0
.end method
