.class public final Lcom/android/systemui/statusbar/PanelStateNotifier;
.super Ljava/lang/Object;
.source "PanelStateNotifier.java"


# static fields
.field private static mBarState:I = 0x0

.field private static mPanelExpandState:Z = false

.field private static mState:I = -0x1

.field private static mStatusBarManager:Landroid/app/SemStatusBarManager;

.field private static mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method public static synthetic $r8$lambda$uX9Pmvjc9TJTUOs84c_L7Ny1KjY(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->lambda$notify$0(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    sput-object v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    return-void
.end method

.method private static isKeyguardState(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isShadeLockedState(I)Z
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$notify$0(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 1

    .line 114
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static notify(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static notify(Landroid/content/Context;IZ)V
    .locals 6

    .line 80
    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 82
    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 90
    :cond_1
    sput p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mState:I

    const-string v0, "PanelStateNotifier"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const-string v3, "com.samsung.systemui.statusbar.ANIMATING"

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    const-string v3, "com.samsung.systemui.statusbar.EXPANDED"

    move v1, v2

    goto :goto_0

    :cond_3
    if-nez p1, :cond_8

    const-string v3, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 105
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTesting()Z

    move-result v0

    if-nez v0, :cond_4

    .line 110
    sget-object v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v3, Lcom/android/systemui/statusbar/PanelStateNotifier$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2, p0}, Lcom/android/systemui/statusbar/PanelStateNotifier$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_4
    if-eq p1, v2, :cond_7

    .line 120
    sget-object p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-nez p1, :cond_5

    const-string/jumbo p1, "sem_statusbar"

    .line 122
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemStatusBarManager;

    sput-object p0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 125
    :cond_5
    sget-object p0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz p0, :cond_6

    .line 127
    invoke-virtual {p0, v1}, Landroid/app/SemStatusBarManager;->setPanelExpandState(Z)V

    .line 129
    :cond_6
    sput-boolean v1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mPanelExpandState:Z

    :cond_7
    return-void

    :cond_8
    const-string p0, "Invalid panel open state"

    .line 101
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setQsExpanded(Landroid/content/Context;Z)V
    .locals 1

    .line 138
    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    .line 140
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    :cond_1
    return-void
.end method

.method public static setStatusBarState(Landroid/content/Context;I)V
    .locals 1

    .line 145
    sget v0, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 149
    :cond_0
    sput p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    .line 154
    invoke-static {p1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeLockedState(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 155
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;I)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isShadeLockedState(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/android/systemui/statusbar/PanelStateNotifier;->mBarState:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->isKeyguardState(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 157
    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;IZ)V

    :cond_2
    :goto_0
    return-void
.end method
