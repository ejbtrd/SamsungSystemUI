.class public Lcom/android/wm/shell/draganddrop/SmartTip;
.super Ljava/lang/Object;
.source "SmartTip.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKey:Ljava/lang/String;

.field private final mLayoutResId:I

.field private final mLimitCount:I

.field private final mMsgResId:I

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private mRootView:Landroid/view/View;

.field private mShowRequested:Z

.field private mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field private final mTitle:Ljava/lang/String;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTitle:Ljava/lang/String;

    const-string/jumbo p2, "window"

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mWindowManager:Landroid/view/WindowManager;

    const/4 p2, 0x0

    .line 56
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mPreferences:Landroid/content/SharedPreferences;

    .line 57
    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mKey:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mLimitCount:I

    .line 59
    iput p5, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mMsgResId:I

    .line 60
    iput p7, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mLayoutResId:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/draganddrop/SmartTip;IIZI)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/draganddrop/SmartTip;->showTipPopup(IIZI)V

    return-void
.end method

.method private addCount()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/SmartTip;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private addView()V
    .locals 8

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartTip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addView: mRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7d8

    const v6, 0x1000118

    const/4 v7, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 118
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 119
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 122
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getCount()I
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mKey:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getDirection(Z)I
    .locals 0

    xor-int/lit8 p0, p1, 0x1

    return p0
.end method

.method private removeView()V
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartTip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeView: mView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    return-void
.end method

.method private showTipPopup(IIZI)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartTip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "show tipPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mMsgResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, p3}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 132
    iget-object p3, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 133
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p0, p4}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismissIfPossible()V
    .locals 2

    .line 149
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mShowRequested:Z

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 154
    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/SmartTip;->removeView()V

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mShowRequested:Z

    return-void
.end method

.method public moveTipPopup(II)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 145
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTipPopup;->update()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showIfPossible(IIZZ)Z
    .locals 9

    .line 66
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/SmartTip;->getCount()I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mLimitCount:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mShowRequested:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mShowRequested:Z

    .line 75
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-nez v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v3, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mLayoutResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    .line 77
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/SmartTip;->addView()V

    .line 78
    new-instance v1, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    invoke-direct {v1, v3, v0}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;I)V

    iput-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 81
    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup;->semGetBubblePopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup;->semGetBubblePopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup;->semGetBalloonPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup;->semGetBalloonPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    .line 89
    :cond_3
    invoke-direct {p0, p4}, Lcom/android/wm/shell/draganddrop/SmartTip;->getDirection(Z)I

    move-result v8

    .line 90
    iget-object p4, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 91
    invoke-direct {p0, p1, p2, p3, v8}, Lcom/android/wm/shell/draganddrop/SmartTip;->showTipPopup(IIZI)V

    goto :goto_0

    .line 93
    :cond_4
    iget-object p4, p0, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/android/wm/shell/draganddrop/SmartTip$1;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/wm/shell/draganddrop/SmartTip$1;-><init>(Lcom/android/wm/shell/draganddrop/SmartTip;IIZI)V

    invoke-virtual {p4, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 104
    :goto_0
    invoke-direct {p0}, Lcom/android/wm/shell/draganddrop/SmartTip;->addCount()V

    return v0
.end method
