.class Lcom/android/systemui/ScreenDecorations$3;
.super Ljava/lang/Object;
.source "ScreenDecorations.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/ScreenDecorations;->createOverlay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ScreenDecorations;

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/android/systemui/ScreenDecorations;I)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/android/systemui/ScreenDecorations$3;->this$0:Lcom/android/systemui/ScreenDecorations;

    iput p2, p0, Lcom/android/systemui/ScreenDecorations$3;->val$pos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 508
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$3;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p1, p1, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    iget p2, p0, Lcom/android/systemui/ScreenDecorations$3;->val$pos:I

    aget-object p1, p1, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 509
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$3;->this$0:Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->access$100(Lcom/android/systemui/ScreenDecorations;)Z

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 510
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$3;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p1, p1, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/ScreenDecorations$3;->val$pos:I

    aget-object p0, p1, p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 519
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations$3;->this$0:Lcom/android/systemui/ScreenDecorations;

    iget-object p1, p1, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Landroid/view/View;

    iget p0, p0, Lcom/android/systemui/ScreenDecorations$3;->val$pos:I

    aget-object p0, p1, p0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 520
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x3e8

    .line 521
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 522
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method
