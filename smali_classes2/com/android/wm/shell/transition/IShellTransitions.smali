.class public interface abstract Lcom/android/wm/shell/transition/IShellTransitions;
.super Ljava/lang/Object;
.source "IShellTransitions.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/transition/IShellTransitions$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerRemote(Landroid/window/TransitionFilter;Landroid/window/IRemoteTransition;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterRemote(Landroid/window/IRemoteTransition;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
