.class Lcom/android/keyguard/PasswordTextView$CharState$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextView$CharState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$1:Lcom/android/keyguard/PasswordTextView$CharState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextView$CharState;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 431
    iput-boolean p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$1;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 436
    iget-boolean p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$1;->mCancelled:Z

    if-nez p1, :cond_0

    .line 437
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object v0, p1, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 438
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object v0, p1, Lcom/android/keyguard/PasswordTextView$CharState;->this$0:Lcom/android/keyguard/PasswordTextView;

    iget-object v0, v0, Lcom/android/keyguard/PasswordTextView;->mCharPool:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    invoke-virtual {p1}, Lcom/android/keyguard/PasswordTextView$CharState;->reset()V

    .line 440
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    iget-object v0, p1, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-static {p1, v0}, Lcom/android/keyguard/PasswordTextView$CharState;->access$200(Lcom/android/keyguard/PasswordTextView$CharState;Landroid/animation/Animator;)V

    .line 441
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$CharState$1;->this$1:Lcom/android/keyguard/PasswordTextView$CharState;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 447
    iput-boolean p1, p0, Lcom/android/keyguard/PasswordTextView$CharState$1;->mCancelled:Z

    return-void
.end method
