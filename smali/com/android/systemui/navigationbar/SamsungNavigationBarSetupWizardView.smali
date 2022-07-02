.class public Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;
.super Landroid/widget/FrameLayout;
.source "SamsungNavigationBarSetupWizardView.java"


# instance fields
.field private mA11yBtn:Landroid/widget/ImageView;

.field private mA11yLayout:Landroid/widget/LinearLayout;

.field private mA11yRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

.field private mBackAltRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

.field private mBackRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHints:I

.field private mImeBtn:Landroid/widget/ImageView;

.field private mImeBtnLayout:Landroid/widget/LinearLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPrevBtn:Landroid/widget/ImageView;

.field private mPrevBtnLayout:Landroid/widget/LinearLayout;

.field private mSetupWizardView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$WrMUic0ySXLlaowvgscc5j0SMos(Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->lambda$onFinishInflate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qfrsdik5x_7m_UXPK8jB3Vrq8Iw(Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rKULdf5i9dIpiNqMUnRhbUgXfXY(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->lambda$onFinishInflate$2(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mHints:I

    .line 71
    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private inflateLayout()V
    .locals 3

    .line 122
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->samsung_navigation_setup_wizard_bar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mSetupWizardView:Landroid/widget/FrameLayout;

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->sendEvent(III)V

    const/4 v1, 0x1

    .line 82
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->sendEvent(III)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;)V
    .locals 1

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 107
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 108
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    return-void
.end method

.method private static synthetic lambda$onFinishInflate$2(Landroid/view/View;)Z
    .locals 3

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    .line 113
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    const-class v1, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    .line 115
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method

.method private sendEvent(III)V
    .locals 6

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->sendEvent(IIIJ)V

    return-void
.end method

.method private sendEvent(IIIJ)V
    .locals 14

    .line 132
    new-instance v13, Landroid/view/KeyEvent;

    or-int/lit8 v0, p3, 0x8

    or-int/lit8 v11, v0, 0x40

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v12, 0x101

    move-object v0, v13

    move-wide/from16 v1, p4

    move-wide/from16 v3, p4

    move/from16 v5, p2

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 136
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private updateResources()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mPrevBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_back:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mImeBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_back_ime:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mA11yBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_accessibility_button:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mPrevBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->samsung_accessibility_back:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mImeBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mA11yBtn:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->accessibility_accessibility_button:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public disableBack(Z)V
    .locals 3

    .line 175
    iget v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mHints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 176
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->updateResources()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 77
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->inflateLayout()V

    .line 80
    new-instance v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;)V

    .line 85
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mSetupWizardView:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->prev_btn_area:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    .line 86
    new-instance v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;F)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mBackRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 87
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mSetupWizardView:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->prev_ime_area:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mImeBtnLayout:Landroid/widget/LinearLayout;

    .line 90
    new-instance v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mImeBtnLayout:Landroid/widget/LinearLayout;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;F)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mBackAltRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 91
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mImeBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mSetupWizardView:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->a11y_area:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mA11yLayout:Landroid/widget/LinearLayout;

    .line 94
    new-instance v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mA11yLayout:Landroid/widget/LinearLayout;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;-><init>(Landroid/content/Context;Landroid/view/View;F)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mA11yRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    .line 95
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mA11yLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mSetupWizardView:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->prev_btn_arrow:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mPrevBtn:Landroid/widget/ImageView;

    .line 98
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mSetupWizardView:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->ime_icon:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mImeBtn:Landroid/widget/ImageView;

    .line 99
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mSetupWizardView:Landroid/widget/FrameLayout;

    sget v2, Lcom/android/systemui/R$id;->a11y_button:I

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mA11yBtn:Landroid/widget/ImageView;

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->updateResources()V

    .line 103
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mImeBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mA11yLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mA11yLayout:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->navbar_icon_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->navbar_icon_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 164
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v2

    .line 165
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, p1, v0, v1}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mPrevBtn:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 167
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mImeBtn:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 168
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mA11yBtn:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mBackRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->setDarkIntensity(F)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mBackAltRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->setDarkIntensity(F)V

    .line 171
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mA11yRipple:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple;->setDarkIntensity(F)V

    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 4

    .line 155
    iput p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mHints:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 157
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mImeBtnLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mPrevBtnLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateA11yShortcut(ZZ)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mA11yLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->mA11yLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    return-void
.end method
