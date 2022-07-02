.class Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;
.super Ljava/lang/Object;
.source "FreeformContainerItemController.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mFreeformContainerIconLoader:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;

.field private mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

.field private final mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;


# direct methods
.method public static synthetic $r8$lambda$L0iY_xUYbSc6xGeA3pwDQbMTTsM(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->lambda$loadItem$0(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    .line 83
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;

    invoke-direct {v0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mFreeformContainerIconLoader:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;

    return-void
.end method

.method private synthetic lambda$loadItem$0(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mFreeformContainerIconLoader:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->loadShowingIcon(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;)V

    .line 137
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    .line 138
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ItemController] IconInfo is Loaded: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FreeformContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private loadItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 1

    .line 135
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    .line 140
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private publishItemIfNeeded(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 6

    .line 254
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FreeformContainer"

    if-nez v0, :cond_1

    .line 255
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ItemController] publishItemIfNeeded: item is not in list, item="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 258
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->readyToPublishItem()Z

    move-result v0

    if-nez v0, :cond_3

    .line 259
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ItemController] publishItemIfNeeded: item is not ready, item="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 264
    iget-object v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    .line 265
    invoke-virtual {v4}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->isPublishCompleted()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    move v4, v2

    goto :goto_1

    :cond_5
    :goto_0
    move v4, v3

    :goto_1
    if-nez v4, :cond_7

    .line 267
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->DEBUG:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ItemController] publishItemIfNeeded: previous item is not published, item="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    .line 273
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 274
    iget-object v4, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v4, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 276
    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->publishCompleted()V

    .line 277
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 v4, 0x10

    invoke-virtual {v2, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 278
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {v2, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->notifyItemAdded(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    .line 280
    sget-boolean v2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->DEBUG:Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ItemController] publishItemIfNeeded item="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v3

    if-ge v0, p1, :cond_9

    .line 284
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    add-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->publishItemIfNeeded(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    :cond_9
    return-void
.end method


# virtual methods
.method addAllItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;",
            ">;)V"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    monitor-enter v0

    .line 173
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 174
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->addItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 176
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method addItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 4

    .line 104
    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->needLoading(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "FreeformContainer"

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ItemController] This item has been loaded, do nothing item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    monitor-enter v0

    .line 112
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->removeDuplicatedItemsIfExist(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;)V

    .line 115
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_3

    const-string v1, "FreeformContainer"

    const-string v2, "[ItemController] remove last published item because it\'s over the max Freeform container count"

    .line 116
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 120
    iget-object v2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    .line 121
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    invoke-virtual {v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->isPublishCompleted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->removeItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    .line 123
    invoke-virtual {v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->handleMaxItem()V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 128
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->loadItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    return-void

    :catchall_0
    move-exception p0

    .line 129
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method animationCompleted(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 3

    .line 204
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->DEBUG:Z

    const-string v1, "FreeformContainer"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ItemController] animationCompleted: item: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ItemController] animationCompleted failed item(="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is not in list"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->animationCompleted()V

    .line 212
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->publishItemIfNeeded(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    return-void
.end method

.method copyItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 167
    sget-object p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController$$ExternalSyntheticLambda1;->INSTANCE:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController$$ExternalSyntheticLambda1;

    invoke-interface {v0, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method destroy()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 100
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method forceCompleteAnimationOfAllItems()V
    .locals 2

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    .line 218
    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->animationCompleted(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method getItemById(I)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;
    .locals 2

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    .line 305
    instance-of v1, v0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;

    .line 306
    invoke-virtual {v1}, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;->getTaskId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getItemByName(Ljava/lang/String;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;
    .locals 2

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    .line 295
    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getItemByPosition(I)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    return-object p0
.end method

.method hasSameNotificationKey(Ljava/lang/String;)Z
    .locals 2

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 327
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    .line 328
    instance-of v1, v0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;

    .line 329
    invoke-virtual {v0}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;->getNotificationKey()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method iconLoadCompleted(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 3

    .line 223
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->DEBUG:Z

    const-string v1, "FreeformContainer"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ItemController] iconLoadCompleted: item="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ItemController] iconLoadCompleted failed item(="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") is not in list"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 230
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->iconLoadCompleted()V

    .line 231
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->publishItemIfNeeded(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    return-void
.end method

.method init(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;)V
    .locals 7

    .line 87
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    .line 88
    iput-object p2, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    .line 89
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mFreeformContainerIconLoader:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;

    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->loadResources()V

    .line 91
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 92
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p0, 0x1

    .line 94
    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method removeAllMinimizeContainerItem()V
    .locals 3

    .line 314
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[ItemController] Run removeAllMinimizeContainerItem"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 316
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    .line 317
    instance-of v2, v1, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;

    if-eqz v2, :cond_1

    .line 318
    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->removeItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method removeAllSmartPopupViewItem()V
    .locals 3

    .line 338
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[ItemController] Run removeAllSmartPopupViewItem"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 340
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    .line 341
    instance-of v2, v1, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;

    if-eqz v2, :cond_1

    .line 342
    invoke-virtual {p0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->removeItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method removeItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 2

    .line 180
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ItemController] Run removeItem, item="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->isPublishCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mViewController:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerViewController;->notifyItemRemoved(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    :cond_1
    return-void
.end method

.method restoreMinimizeContainerItems(Landroid/content/Context;)V
    .locals 9

    .line 144
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 147
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMinimizedFreeformTasksForCurrentUser()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 152
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    const/16 v4, 0x80

    iget v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 155
    new-instance v2, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;

    iget v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    const/4 v8, 0x1

    move-object v3, v2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 157
    invoke-virtual {p0, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->addItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 159
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method throwAwayFromPointer()V
    .locals 2

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->mItemList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 191
    sget-boolean v1, Lcom/android/wm/shell/CoreShellRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v1, :cond_0

    const-string v1, "2202"

    .line 192
    invoke-static {v1}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    .line 195
    invoke-virtual {v1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->throwAway(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method throwAwayItemFromFolder(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V
    .locals 0

    .line 200
    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->throwAway(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;)V

    return-void
.end method
