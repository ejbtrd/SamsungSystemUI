.class public Lcom/android/keyguard/KeyguardHintTextArea;
.super Landroid/widget/RelativeLayout;
.source "KeyguardHintTextArea.java"


# instance fields
.field private mHintText:Lcom/android/systemui/widget/SystemUITextView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPasswordHintText:Ljava/lang/String;

.field private mShowHintText:Lcom/android/systemui/widget/SystemUITextView;


# direct methods
.method public static synthetic $r8$lambda$7_8dLY8lenE8WxN24_F5UNT-5BQ(Lcom/android/keyguard/KeyguardHintTextArea;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHintTextArea;->lambda$onFinishInflate$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HcMBOtrvisAT377A-XlX8OjPR6M(Lcom/android/keyguard/KeyguardHintTextArea;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHintTextArea;->lambda$onFinishInflate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$TCoL1d7ExyMcfYRLoHvI-Yd6Kyg(Lcom/android/keyguard/KeyguardHintTextArea;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHintTextArea;->lambda$onFinishInflate$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$rfVaxPl5YXoVR-q9scrnUNlSyj8(Lcom/android/keyguard/KeyguardHintTextArea;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHintTextArea;->lambda$onFinishInflate$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardHintTextArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 30
    iput-object p2, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    .line 38
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0()V
    .locals 1

    .line 57
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;)V
    .locals 5

    .line 55
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 56
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xe9

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v3}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v3, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;)V

    .line 57
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 58
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 59
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 60
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {p1}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const-string p0, "102"

    const-string p1, "1034"

    .line 62
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$2()V
    .locals 1

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$3(Landroid/view/View;)V
    .locals 5

    .line 66
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 67
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v2, 0xe9

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v4, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v4}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v4, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;)V

    .line 68
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 69
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 70
    iget-object p1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 71
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {p1}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method protected getPasswordHintText()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 43
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 44
    sget v0, Lcom/android/systemui/R$id;->hint_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 45
    sget v0, Lcom/android/systemui/R$id;->show_hint_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    .line 46
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->kg_password_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 47
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 48
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 49
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHint(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->kg_password_hint_show:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mPasswordHintText:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v1, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    new-instance v1, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardHintTextArea$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardHintTextArea;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    if-nez p1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 p1, 0x8

    .line 95
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected updateHintButton()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 77
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 78
    iget-object p0, p0, Lcom/android/keyguard/KeyguardHintTextArea;->mShowHintText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    return-void
.end method
