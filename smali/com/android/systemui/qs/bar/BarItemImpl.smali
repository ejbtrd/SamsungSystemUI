.class public abstract Lcom/android/systemui/qs/bar/BarItemImpl;
.super Ljava/lang/Object;
.source "BarItemImpl.java"

# interfaces
.implements Lcom/android/systemui/qs/bar/BarItem;


# instance fields
.field public final TAG:Ljava/lang/String;

.field protected mBarRootView:Landroid/view/View;

.field protected mCallback:Lcom/android/systemui/qs/bar/BarItem$Callback;

.field protected mContext:Landroid/content/Context;

.field protected mDisabled:Z

.field protected mIsOnCollapsedState:Z

.field protected mListening:Z

.field protected mQsExpanded:Z

.field protected mQsExpandedHeight:I

.field protected mQsFullyExpanded:Z

.field protected mShowing:Z

.field protected mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    const/4 v1, 0x0

    .line 31
    iput v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mQsExpandedHeight:I

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    .line 40
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    .line 43
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clearCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarItem$Callback;

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/BarItemImpl;->clearCallback()V

    return-void
.end method

.method public disable(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mDisabled:Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getBarView()Landroid/view/View;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    return-object p0
.end method

.method public getOnCollapsedState()Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 139
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    return p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onKnoxPolicychanged()V
    .locals 0

    return-void
.end method

.method public onUiModeChanged()V
    .locals 0

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/bar/BarItem$Callback;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarItem$Callback;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mQsExpanded:Z

    return-void
.end method

.method public setListening(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mListening:Z

    return-void
.end method

.method public setOnCollapsedState(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mIsOnCollapsedState:Z

    return-void
.end method

.method public setPosition(F)V
    .locals 0

    return-void
.end method

.method public setQsExpansionHeight(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mQsExpandedHeight:I

    return-void
.end method

.method public setQsFullyExpanded(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mQsFullyExpanded:Z

    return-void
.end method

.method public setStatusBar(Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mStatusBarLazy:Ldagger/Lazy;

    return-void
.end method

.method protected showBar(Z)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showBar : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    .line 120
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 122
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    .line 123
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarItem$Callback;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/systemui/qs/bar/BarItem$Callback;->onBarVisibilityChanged()V

    :cond_2
    return-void
.end method

.method public updateHeightMargins()V
    .locals 0

    return-void
.end method
