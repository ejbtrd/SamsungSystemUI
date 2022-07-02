.class public final Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory;
.super Ljava/lang/Object;
.source "PlankModule_ProvidePlankDispatcherFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory$InstanceHolder;->access$000()Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public static providePlankDispatcherFactory()Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;
    .locals 1

    .line 27
    invoke-static {}, Lcom/android/systemui/uiautomator/dagger/PlankModule;->providePlankDispatcherFactory()Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;
    .locals 0

    .line 19
    invoke-static {}, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory;->providePlankDispatcherFactory()Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory;->get()Lcom/android/systemui/uiautomator/command/PlankDispatcherFactory;

    move-result-object p0

    return-object p0
.end method
