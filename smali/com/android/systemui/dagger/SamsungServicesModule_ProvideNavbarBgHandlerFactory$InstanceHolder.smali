.class final Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "SamsungServicesModule_ProvideNavbarBgHandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/SamsungServicesModule_ProvideNavbarBgHandlerFactory;

    return-object v0
.end method
