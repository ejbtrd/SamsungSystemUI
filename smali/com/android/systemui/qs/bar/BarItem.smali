.class public interface abstract Lcom/android/systemui/qs/bar/BarItem;
.super Ljava/lang/Object;
.source "BarItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/bar/BarItem$Callback;
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract disable(Z)V
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getBarHeight()I
.end method

.method public abstract getBarView()Landroid/view/View;
.end method

.method public abstract inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract onConfigChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onKnoxPolicychanged()V
.end method

.method public abstract onUiModeChanged()V
.end method

.method public abstract setCallback(Lcom/android/systemui/qs/bar/BarItem$Callback;)V
.end method

.method public abstract setExpanded(Z)V
.end method

.method public abstract setListening(Z)V
.end method

.method public abstract setOnCollapsedState(Z)V
.end method

.method public abstract setPosition(F)V
.end method

.method public abstract setQsExpansionHeight(I)V
.end method

.method public abstract setQsFullyExpanded(Z)V
.end method

.method public abstract setStatusBar(Ldagger/Lazy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateHeightMargins()V
.end method
