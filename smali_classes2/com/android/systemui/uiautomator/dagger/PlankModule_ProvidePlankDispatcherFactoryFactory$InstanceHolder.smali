.class final Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "PlankModule_ProvidePlankDispatcherFactoryFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory;

    invoke-direct {v0}, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidePlankDispatcherFactoryFactory;

    return-object v0
.end method
