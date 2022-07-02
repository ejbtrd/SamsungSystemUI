.class Lcom/android/keyguard/KeyguardSecSecurityContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardSecSecurityContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSecSecurityContainer;->updateSecurityViewPosition(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRunningOneHandedAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method
