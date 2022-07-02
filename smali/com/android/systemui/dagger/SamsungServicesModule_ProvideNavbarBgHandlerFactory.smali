.class public final Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory;
.super Ljava/lang/Object;
.source "SamsungServicesModule_ProvideNavbarBgHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Handler;",
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

.method public static create()Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory;
    .locals 1

    .line 23
    invoke-static {}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory$InstanceHolder;->access$000()Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideNavbarBgHandler()Landroid/os/Handler;
    .locals 1

    .line 27
    invoke-static {}, Lcom/android/systemui/dagger/SamsungServicesModule;->provideNavbarBgHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/os/Handler;
    .locals 0

    .line 19
    invoke-static {}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory;->provideNavbarBgHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory;->get()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
