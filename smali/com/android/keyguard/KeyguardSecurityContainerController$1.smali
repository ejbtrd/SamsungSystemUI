.class Lcom/android/keyguard/KeyguardSecurityContainerController$1;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainerController.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTouchDown:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$1;->mTouchDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 110
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$1;->mTouchDown:Landroid/view/MotionEvent;

    .line 112
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$1;->mTouchDown:Landroid/view/MotionEvent;

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$1;->mTouchDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$1;->mTouchDown:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 117
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$1;->mTouchDown:Landroid/view/MotionEvent;

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
