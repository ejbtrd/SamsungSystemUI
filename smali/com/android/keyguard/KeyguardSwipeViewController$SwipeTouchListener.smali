.class Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;
.super Ljava/lang/Object;
.source "KeyguardSwipeViewController.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSwipeViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSwipeViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSwipeViewController;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;->this$0:Lcom/android/keyguard/KeyguardSwipeViewController;

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
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;->this$0:Lcom/android/keyguard/KeyguardSwipeViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSwipeViewController;->mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    .line 44
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeViewController$SwipeTouchListener;->this$0:Lcom/android/keyguard/KeyguardSwipeViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSwipeViewController;->mSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
