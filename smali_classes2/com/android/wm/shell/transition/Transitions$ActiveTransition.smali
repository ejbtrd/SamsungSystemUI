.class final Lcom/android/wm/shell/transition/Transitions$ActiveTransition;
.super Ljava/lang/Object;
.source "Transitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/Transitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActiveTransition"
.end annotation


# instance fields
.field mFinishT:Landroid/view/SurfaceControl$Transaction;

.field mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

.field mInfo:Landroid/window/TransitionInfo;

.field mMerged:Z

.field mStartT:Landroid/view/SurfaceControl$Transaction;

.field mToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mToken:Landroid/os/IBinder;

    .line 100
    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    const/4 v1, 0x0

    .line 101
    iput-boolean v1, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mMerged:Z

    .line 102
    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mInfo:Landroid/window/TransitionInfo;

    .line 103
    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mStartT:Landroid/view/SurfaceControl$Transaction;

    .line 104
    iput-object v0, p0, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/transition/Transitions$1;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/wm/shell/transition/Transitions$ActiveTransition;-><init>()V

    return-void
.end method
