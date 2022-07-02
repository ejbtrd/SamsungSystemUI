.class final Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideApiLoggerFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "PlankModule_ProvideApiLoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideApiLoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideApiLoggerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideApiLoggerFactory;

    invoke-direct {v0}, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideApiLoggerFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideApiLoggerFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideApiLoggerFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideApiLoggerFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideApiLoggerFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvideApiLoggerFactory;

    return-object v0
.end method
