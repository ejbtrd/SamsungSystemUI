.class final Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUILogWrapperFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "SamsungServicesModule_ProvidesPopupUILogWrapperFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUILogWrapperFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUILogWrapperFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUILogWrapperFactory;

    invoke-direct {v0}, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUILogWrapperFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUILogWrapperFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUILogWrapperFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUILogWrapperFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUILogWrapperFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/dagger/SamsungServicesModule_ProvidesPopupUILogWrapperFactory;

    return-object v0
.end method
