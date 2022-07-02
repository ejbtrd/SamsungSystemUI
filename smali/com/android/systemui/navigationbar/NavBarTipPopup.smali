.class public Lcom/android/systemui/navigationbar/NavBarTipPopup;
.super Ljava/lang/Object;
.source "NavBarTipPopup.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentActionMessage:I

.field private mCurrentMessage:I

.field private mHandler:Landroid/os/Handler;

.field private final mLayout:Landroid/view/View;

.field private mLayoutAttachedToWindow:Z

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mNavBarWidth:I

.field private mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field private final mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$6cUG082zu7sTYyVait378BoOV0Y(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->lambda$showTipPopup$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ib-WNAlrZH7dK3MpqeVisP4cYoY(Lcom/android/systemui/navigationbar/NavBarTipPopup;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->lambda$showA11ySwipeUpTip$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$VVv5j_vcYvz4S5l7FiaeNxyObyU(Lcom/android/systemui/navigationbar/NavBarTipPopup;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->lambda$showTipPopup$0(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/android/systemui/navigationbar/NavBarTipPopup$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup$1;-><init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 72
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103012b

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mWindowManager:Landroid/view/WindowManager;

    .line 74
    iput-object p3, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 76
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->navbar_tip_popup:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLayout:Landroid/view/View;

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/navigationbar/NavBarTipPopup;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/navigationbar/NavBarTipPopup;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLayoutAttachedToWindow:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->showTipPopup()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/navigationbar/NavBarTipPopup;)Lcom/samsung/android/widget/SemTipPopup;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/navigationbar/NavBarTipPopup;Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    return-object p1
.end method

.method private getTipPopupYposition()I
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->navbar_tip_window_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mContext:Landroid/content/Context;

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->navbar_tip_window_padding_bottom:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 89
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v4, 0x0

    const/16 v5, 0x7d8

    const/16 v6, 0x208

    const/4 v7, -0x3

    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 p2, 0x10

    .line 95
    invoke-virtual {p0, p2}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    const-string p2, "NavBarTip"

    .line 96
    invoke-virtual {p0, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object p0
.end method

.method private synthetic lambda$showA11ySwipeUpTip$2(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 184
    sget p1, Lcom/android/systemui/R$string;->gesture_accessibility_guide_gesture_onboarding_voice_assistant_on:I

    goto :goto_0

    .line 185
    :cond_0
    sget p1, Lcom/android/systemui/R$string;->gesture_accessibility_guide_gesture_onboarding:I

    :goto_0
    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->show(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/util/NavBarTipPopupUtil;->setA11ySwipeUpTipCount(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$showTipPopup$0(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->hide()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showTipPopup$1()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    return-void
.end method

.method private show(II)Z
    .locals 5

    .line 103
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->hide()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLayout:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 110
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLayoutAttachedToWindow:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->navbar_tip_margin_start:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLayout:Landroid/view/View;

    const/16 v4, 0x53

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->getWindowLayoutParams(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    iput p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mCurrentMessage:I

    .line 122
    iput p2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mCurrentActionMessage:I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private showTipPopup()V
    .locals 4

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->getTipPopupYposition()I

    move-result v0

    .line 156
    new-instance v1, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLayout:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 157
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mCurrentMessage:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 159
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemTipPopup;->setOutsideTouchEnabled(Z)V

    .line 160
    iget v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mNavBarWidth:I

    div-int/lit8 v1, v1, 0x2

    .line 161
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mNavbarTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    new-instance v1, Lcom/android/systemui/navigationbar/NavBarTipPopup$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setOnStateChangeListener(Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/navigationbar/NavBarTipPopup$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .line 129
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLayoutAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide fail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tip"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isTipPopupShowing()Z
    .locals 0

    .line 178
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLayoutAttachedToWindow:Z

    return p0
.end method

.method public setNavbarWidth(I)V
    .locals 1

    .line 140
    iget v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mNavBarWidth:I

    if-eq v0, p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->hide()V

    .line 145
    :cond_0
    iput p1, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mNavBarWidth:I

    return-void
.end method

.method public showA11ySwipeUpTip(Z)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavBarTipPopup;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/navigationbar/NavBarTipPopup$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/navigationbar/NavBarTipPopup$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/NavBarTipPopup;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
