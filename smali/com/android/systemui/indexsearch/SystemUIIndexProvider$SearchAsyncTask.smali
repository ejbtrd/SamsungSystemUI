.class Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;
.super Landroid/os/AsyncTask;
.source "SystemUIIndexProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/indexsearch/SystemUIIndexProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;Lcom/android/systemui/indexsearch/SystemUIIndexProvider$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    .locals 1

    const/4 v0, 0x0

    .line 39
    aget-object p1, p1, v0

    .line 40
    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    invoke-static {v0}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->access$000(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    invoke-static {p0}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->access$000(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->search(Ljava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;

    move-result-object p0

    return-object p0
.end method

.method protected onPreExecute()V
    .locals 1

    .line 33
    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    const-class v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-static {p0, v0}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->access$002(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;Lcom/android/systemui/indexsearch/SystemUIIndexMediator;)Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    return-void
.end method
