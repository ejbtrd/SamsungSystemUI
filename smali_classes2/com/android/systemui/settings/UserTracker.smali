.class public interface abstract Lcom/android/systemui/settings/UserTracker;
.super Ljava/lang/Object;
.source "UserTracker.kt"

# interfaces
.implements Lcom/android/systemui/settings/UserContextProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/UserTracker$Callback;
    }
.end annotation


# virtual methods
.method public abstract addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V
    .param p1    # Lcom/android/systemui/settings/UserTracker$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getUserHandle()Landroid/os/UserHandle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getUserId()I
.end method

.method public abstract getUserInfo()Landroid/content/pm/UserInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getUserProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V
    .param p1    # Lcom/android/systemui/settings/UserTracker$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
