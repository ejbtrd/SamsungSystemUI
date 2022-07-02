.class Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;
.super Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;
.source "ExpandedAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->prepareForBubbleDrag(Landroid/view/View;Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagnetListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

.field final synthetic val$bubble:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;Landroid/content/Context;Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroid/view/View;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;->this$0:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iput-object p6, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;->val$bubble:Landroid/view/View;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    return-void
.end method
