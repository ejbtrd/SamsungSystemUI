.class Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;
.super Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;
.source "MinimizeContainerItem.java"


# instance fields
.field private final mTaskId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;->mTaskId:I

    .line 40
    iput-boolean p5, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->mAnimationCompleted:Z

    return-void
.end method


# virtual methods
.method getTaskId()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;->mTaskId:I

    return p0
.end method

.method handleMaxItem()V
    .locals 0

    return-void
.end method

.method launch()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;->getTaskId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->moveTaskToFront(Landroid/content/Context;I)V

    .line 56
    sget-boolean v0, Lcom/android/wm/shell/CoreShellRune;->MW_FREEFORM_USAGE_LOGGING:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->canLaunchInFreeform()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "2201"

    .line 57
    invoke-static {p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method loadShowingIcon(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;)V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getAppIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    .line 63
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->getShowingIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    sget-boolean v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FreeformContainer"

    const-string v2, "loadShowingIcon: knox icon"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getUserId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerIconLoader;->addBadgedIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->setShowingIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method removeDuplicatedItemsIfExist(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->getItemById(I)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->removeItem(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;->getTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;->getItemById(I)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method throwAway(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->throwAway(Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItemController;)V

    .line 50
    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerSystemProxy;->removeTask(Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MinimizeContainerItem {mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerItem;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
