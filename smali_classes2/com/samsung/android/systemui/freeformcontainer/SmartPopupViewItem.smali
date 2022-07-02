.class Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;
.super Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;
.source "SmartPopupViewItem.java"


# instance fields
.field private final mNotification:Landroid/app/Notification;

.field private final mNotificationKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;->mNotification:Landroid/app/Notification;

    .line 42
    iput-object p4, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;->mNotificationKey:Ljava/lang/String;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mAnimationCompleted:Z

    return-void
.end method

.method private getPhotoIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method getNotificationKey()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;->mNotificationKey:Ljava/lang/String;

    return-object p0
.end method

.method launch()V
    .locals 3

    .line 62
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->canLaunchInFreeform()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 65
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->preserveTaskWindowingMode()V

    :cond_0
    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 69
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;->mNotification:Landroid/app/Notification;

    iget-object p0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-static {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->sendContentIntent(Landroid/app/PendingIntent;Landroid/app/ActivityOptions;)V

    .line 71
    sget-boolean p0, Lcom/android/wm/shell/CoreShellRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz p0, :cond_1

    .line 72
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p0

    if-ne p0, v2, :cond_1

    const-string p0, "2004"

    const-string v0, "From Smart Popup"

    .line 73
    invoke-static {p0, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method loadShowingIcon(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;)V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getAppIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;->getPhotoIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 80
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->getShowingIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->setShowingIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method needLoading(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;)Z
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;->getNotificationKey()Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->hasSameNotificationKey(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method removeDuplicatedItemsIfExist(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;)V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->getItemByName(Ljava/lang/String;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->removeItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->getItemByName(Ljava/lang/String;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartPopupViewItem {mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotificationKey= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;->mNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
