.class public interface abstract Lcom/android/systemui/controls/controller/util/BadgeSubject;
.super Ljava/lang/Object;
.source "BadgeProvider.kt"


# virtual methods
.method public abstract invalidate()V
.end method

.method public abstract register(Lcom/android/systemui/controls/controller/util/BadgeObserver;)V
    .param p1    # Lcom/android/systemui/controls/controller/util/BadgeObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract unregister(Lcom/android/systemui/controls/controller/util/BadgeObserver;)V
    .param p1    # Lcom/android/systemui/controls/controller/util/BadgeObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
