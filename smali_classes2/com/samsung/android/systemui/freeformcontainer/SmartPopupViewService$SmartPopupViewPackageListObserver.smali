.class Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;
.super Landroid/database/ContentObserver;
.source "SmartPopupViewService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartPopupViewPackageListObserver"
.end annotation


# instance fields
.field private final mSmartPopupViewPackageListUri:Landroid/net/Uri;

.field private final mZenModeUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;)V
    .locals 5

    .line 240
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "floating_noti_package_list"

    .line 233
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    const-string/jumbo v1, "zen_mode"

    .line 238
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->mZenModeUri:Landroid/net/Uri;

    .line 242
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->loadingEnabledListFromDB()V

    .line 243
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->updateZenMode()V

    .line 246
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, v1, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private loadingEnabledListFromDB()V
    .locals 5

    .line 261
    invoke-static {}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[SmartPopupViewService] loadingEnabledListFromDB"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;

    invoke-static {v0}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->access$400(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowUtils$SmartPopupViewUtil;->getPackageStrListFromDB(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->access$200(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 266
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;

    invoke-static {v3}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 v4, 0x18

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->access$200(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 273
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->access$200(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private updateZenMode()V
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;

    invoke-static {v1}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->access$500(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 281
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->this$0:Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;

    invoke-static {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->access$502(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;I)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 252
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->loadingEnabledListFromDB()V

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->mZenModeUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;->updateZenMode()V

    :cond_1
    return-void
.end method
