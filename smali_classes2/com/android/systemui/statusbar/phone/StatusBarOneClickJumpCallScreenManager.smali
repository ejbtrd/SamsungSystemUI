.class public Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;
.super Ljava/lang/Object;
.source "StatusBarOneClickJumpCallScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final CALL_DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsBadQsTouchFlag:Z

.field private mIsInCallStateOnGedBroadcast:Z

.field private mIsInCallStateOnSecBroadcast:Z

.field private mIsTouchOnIndicatorFlag:Z

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private mReceivedScreenOffSignalFlag:Z

.field private mReceiver:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

.field private mStartToJumpAleadyFlag:Z

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mTouchDownX:F

.field private mTouchDownY:F


# direct methods
.method public static synthetic $r8$lambda$73rdPFXyILjwNTfoD4EGtsgxth8(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Landroid/telecom/TelecomManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->lambda$handleQsTouch$0(Landroid/telecom/TelecomManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vP0HBn_NwZzeprUESD4LAi-M8vA(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Landroid/telecom/TelecomManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->lambda$handleQsTouch$1(Landroid/telecom/TelecomManager;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isEngOrUTBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->CALL_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mStartToJumpAleadyFlag:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    .line 206
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsInCallStateOnGedBroadcast:Z

    .line 207
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsInCallStateOnSecBroadcast:Z

    .line 224
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceiver:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsInCallStateOnGedBroadcast:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsInCallStateOnGedBroadcast:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsInCallStateOnSecBroadcast:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsInCallStateOnSecBroadcast:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;)Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceiver:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

    return-object p0
.end method

.method private isCallStateIndicator()Z
    .locals 0

    .line 209
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsInCallStateOnGedBroadcast:Z

    return p0
.end method

.method private isColorfulIndicator()Z
    .locals 2

    .line 213
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 216
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p0, :cond_1

    const-class p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getIndicatorBgColor()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private synthetic lambda$handleQsTouch$0(Landroid/telecom/TelecomManager;)V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** NotificationPanelViewController.handleQsTouch() showInCallScreen() ScreenFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", badTouchFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarOneClickJumpCallScreenManager_NotificationPanelView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p1, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 155
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    .line 157
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mStartToJumpAleadyFlag:Z

    return-void
.end method

.method private synthetic lambda$handleQsTouch$1(Landroid/telecom/TelecomManager;)V
    .locals 1

    .line 150
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Landroid/telecom/TelecomManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceiver:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->unregisterReceiver()V

    return-void
.end method

.method public handleQsTouch(Landroid/view/MotionEvent;)V
    .locals 8

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v1, ", touchFlag:"

    const-string v2, "StatusBarOneClickJumpCallScreenManager_NotificationPanelView"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v4, :cond_6

    const/4 v5, 0x2

    const-string v6, ", getRawY:"

    if-eq v0, v5, :cond_4

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2

    goto/16 :goto_3

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isColorfulIndicator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(ACTION_POINTER_DOWN) getRawX:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", but it will be false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    .line 115
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    goto/16 :goto_3

    .line 130
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isColorfulIndicator()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(ACTION_CANCEL or ACTION_POINTER_UP) SystemUI block to jump to call screen in multi touch. action:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    .line 134
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    goto/16 :goto_3

    .line 118
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 120
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mTouchDownX:F

    sub-float v1, v0, v1

    float-to-int v1, v1

    .line 121
    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mTouchDownY:F

    sub-float v5, p1, v5

    float-to-int v5, v5

    .line 122
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget v7, v7, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlop:I

    if-gt v1, v7, :cond_5

    if-le v5, v7, :cond_10

    .line 123
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(ACTION_MOVE) getRawX:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    .line 125
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    goto/16 :goto_3

    .line 137
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x1f4

    cmp-long v0, v0, v5

    if-gez v0, :cond_7

    move v0, v4

    goto :goto_0

    :cond_7
    move v0, v3

    .line 138
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    if-eqz v1, :cond_8

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isTouchOnIndicatorArea(F)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mContext:Landroid/content/Context;

    .line 140
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isCallStateIndicator()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mStartToJumpAleadyFlag:Z

    if-nez p1, :cond_8

    if-eqz v0, :cond_8

    .line 144
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    if-eqz p1, :cond_a

    .line 146
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(ACTION_UP) postDelayed to jump after 500, ScreenFlag:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", badTouchFlag:"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mStartToJumpAleadyFlag:Z

    .line 149
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;Landroid/telecom/TelecomManager;)V

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 163
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isColorfulIndicator()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(ACTION_UP) no jump to callscreen - touchFlag:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ScreenFlag:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceivedScreenOffSignalFlag:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTouchOnTimeSide:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    const-string p1, "(ACTION_UP) no jump to callscreen no ColorfulIndicator"

    .line 166
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_a
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    .line 170
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsBadQsTouchFlag:Z

    goto/16 :goto_3

    .line 98
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mTouchDownX:F

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mTouchDownY:F

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isTouchOnIndicatorArea(F)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->isColorfulIndicator()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 102
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isKeyguardState()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 103
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpanded()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isExpanding()Z

    move-result p1

    if-nez p1, :cond_c

    move v3, v4

    :cond_c
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    goto :goto_2

    .line 104
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isShadeState()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 105
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getContentHeight()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_e

    move v3, v4

    :cond_e
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    .line 107
    :cond_f
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(ACTION_DOWN) mTouchDownX:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mTouchDownX:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mTouchDownY:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mTouchDownY:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mIsTouchOnIndicatorFlag:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_3
    return-void
.end method

.method public init()V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mReceiver:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager$JumpToCallScreenBroadcastReceiver;->registerReceiver()V

    return-void
.end method

.method public isTouchOnIndicatorArea(F)Z
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isKeyguardState()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 180
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p0, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    return v2

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isShadeState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    :cond_4
    return v2
.end method
