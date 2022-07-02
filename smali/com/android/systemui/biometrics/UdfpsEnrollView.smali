.class public Lcom/android/systemui/biometrics/UdfpsEnrollView;
.super Lcom/android/systemui/biometrics/UdfpsAnimationView;
.source "UdfpsEnrollView.java"


# instance fields
.field private final mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

.field private mFingerprintView:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$3fyEijjqCwXTZ9eGYlNR8uSTZys(Lcom/android/systemui/biometrics/UdfpsEnrollView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollView;->lambda$onEnrollmentProgress$0(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    .line 42
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onEnrollmentProgress$0(II)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->onEnrollmentProgress(II)V

    return-void
.end method


# virtual methods
.method public getDrawable()Lcom/android/systemui/biometrics/UdfpsDrawable;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    return-object p0
.end method

.method onEnrollmentProgress(II)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollView;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onExpansionChanged(FZ)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onExpansionChanged(FZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 47
    sget v0, Lcom/android/systemui/R$id;->udfps_enroll_animation_fp_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintView:Landroid/widget/ImageView;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method onLastStepAcquired()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setEnrollHelper(Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollDrawable;->setEnrollHelper(Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V

    return-void
.end method
