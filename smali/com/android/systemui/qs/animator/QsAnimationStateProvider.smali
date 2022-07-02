.class public Lcom/android/systemui/qs/animator/QsAnimationStateProvider;
.super Ljava/lang/Object;
.source "QsAnimationStateProvider.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;
    }
.end annotation


# instance fields
.field mCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

.field private mDetailTroggeredExpand:Z

.field private mIsCustomizerClosing:Z

.field private mIsCustomizerOpening:Z

.field private mIsCustomizerShowing:Z

.field private mIsDetailClosing:Z

.field private mIsDetailOpening:Z

.field private mIsDetailShowing:Z

.field private mIsPanelOpenAnimating:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsDetailOpening:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsDetailShowing:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsDetailClosing:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsCustomizerOpening:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsCustomizerShowing:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsCustomizerClosing:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsPanelOpenAnimating:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mDetailTroggeredExpand:Z

    .line 57
    new-instance v0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider$1;-><init>(Lcom/android/systemui/qs/animator/QsAnimationStateProvider;)V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsDetailShowing:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsDetailOpening:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsDetailClosing:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsCustomizerShowing:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsCustomizerOpening:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsCustomizerClosing:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsPanelOpenAnimating:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mDetailTroggeredExpand:Z

    return p1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public isCustomizerVisible()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsCustomizerOpening:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsCustomizerShowing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsCustomizerClosing:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isDetailVisible()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsDetailOpening:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsDetailShowing:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mIsDetailClosing:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isMediaPlayerVisible()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTriggeredExpanding()Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mDetailTroggeredExpand:Z

    return p0
.end method

.method public setQsAnimator(Lcom/android/systemui/qs/animator/SecQSAnimator;)V
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->mCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    invoke-interface {p1, p0}, Lcom/android/systemui/qs/animator/SecQSAnimator;->setAnimaStateCallback(Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;)V

    return-void
.end method
