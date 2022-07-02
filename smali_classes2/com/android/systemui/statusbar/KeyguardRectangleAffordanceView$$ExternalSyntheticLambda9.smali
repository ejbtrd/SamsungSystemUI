.class public final synthetic Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

.field public final synthetic f$1:Landroid/graphics/drawable/Drawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda9;->f$1:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView$$ExternalSyntheticLambda9;->f$1:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->$r8$lambda$GAuHhIivBBclW3SPXNbDMTiPMpQ(Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V

    return-void
.end method
