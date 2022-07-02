.class final Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "PlankModule_ProvidesPlankFeatureEnabledFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory;

    invoke-direct {v0}, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory;
    .locals 1

    .line 28
    sget-object v0, Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/uiautomator/dagger/PlankModule_ProvidesPlankFeatureEnabledFactory;

    return-object v0
.end method
