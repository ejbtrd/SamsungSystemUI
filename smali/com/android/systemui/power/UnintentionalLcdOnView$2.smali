.class Lcom/android/systemui/power/UnintentionalLcdOnView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UnintentionalLcdOnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/UnintentionalLcdOnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$2;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 261
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$2;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->access$702(Lcom/android/systemui/power/UnintentionalLcdOnView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 262
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$2;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->access$802(Lcom/android/systemui/power/UnintentionalLcdOnView;F)F

    return-void
.end method
