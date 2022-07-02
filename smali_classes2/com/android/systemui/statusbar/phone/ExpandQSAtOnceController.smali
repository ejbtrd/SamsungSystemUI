.class public Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;
.super Ljava/lang/Object;
.source "ExpandQSAtOnceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayRatioOfDivider:F

.field private mDisplayWidthOfDivider:I

.field private mNotificationPanelViewControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSettingsListener:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mDisplayWidthOfDivider:I

    .line 120
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;-><init>(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mSettingsListener:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 53
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mNotificationPanelViewControllerLazy:Ldagger/Lazy;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;)Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mSettingsListener:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->printLogLine(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;)Ldagger/Lazy;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mNotificationPanelViewControllerLazy:Ldagger/Lazy;

    return-object p0
.end method

.method private getSidePosition()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getDirectQuickSettingPosition()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "left"

    :goto_0
    return-object p0
.end method

.method private printLogLine(Ljava/lang/String;)V
    .locals 1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", SidePosition:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 154
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getDirectQuickSettingPosition()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Ratio:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mDisplayRatioOfDivider:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "(setting:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 156
    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->getDirectQuickSettingArea()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), Width:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mDisplayWidthOfDivider:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[QuickStar]_ExpandQSAtOnceController"

    .line 153
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearResources()V
    .locals 1

    const-string v0, "clearResources()"

    .line 113
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->printLogLine(Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setExpandQsAtOnceEnabled(I)V

    return-void
.end method

.method public isOpenQsEvent(IF)Z
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isExpandQsAtOnceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->getSidePosition()Ljava/lang/String;

    move-result-object p1

    const-string v0, "left"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mDisplayWidthOfDivider:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    return v0

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->getSidePosition()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "right"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mDisplayWidthOfDivider:I

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onViewAttachedToWindow()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mSettingsListener:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;->register()V

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->updateResources()V

    return-void
.end method

.method public onViewDetachedFromWindow()V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mSettingsListener:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController$SettingsListener;->unregister()V

    return-void
.end method

.method public updateResources()V
    .locals 2

    const-string/jumbo v0, "updateResources(before)"

    .line 92
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->printLogLine(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isExpandQsAtOnceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getDirectQuickSettingArea()I

    move-result v0

    if-gez v0, :cond_1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 96
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mDisplayRatioOfDivider:F

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    .line 98
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mDisplayRatioOfDivider:F

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mDisplayRatioOfDivider:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->mDisplayWidthOfDivider:I

    const-string/jumbo v0, "updateResources(after)"

    .line 101
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->printLogLine(Ljava/lang/String;)V

    return-void
.end method
