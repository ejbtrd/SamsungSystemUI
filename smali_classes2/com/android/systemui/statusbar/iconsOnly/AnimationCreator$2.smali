.class Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;->createIconAppearingAnimSet(Landroid/view/View;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

.field final synthetic val$animView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;Landroid/view/View;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$2;->this$0:Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$2;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/systemui/statusbar/iconsOnly/AnimationCreator$2;->val$animView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
