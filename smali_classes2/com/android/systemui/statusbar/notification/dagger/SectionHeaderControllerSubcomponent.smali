.class public interface abstract Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
.super Ljava/lang/Object;
.source "NotificationSectionHeadersModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;
    }
.end annotation


# virtual methods
.method public abstract getHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
