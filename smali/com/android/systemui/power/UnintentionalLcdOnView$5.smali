.class Lcom/android/systemui/power/UnintentionalLcdOnView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UnintentionalLcdOnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/UnintentionalLcdOnView;->animateWhiteCircle(Z)V
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

    .line 332
    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$5;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 335
    iget-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$5;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-static {p1}, Lcom/android/systemui/power/UnintentionalLcdOnView;->access$1000(Lcom/android/systemui/power/UnintentionalLcdOnView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$5;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-static {p0}, Lcom/android/systemui/power/UnintentionalLcdOnView;->access$000(Lcom/android/systemui/power/UnintentionalLcdOnView;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
