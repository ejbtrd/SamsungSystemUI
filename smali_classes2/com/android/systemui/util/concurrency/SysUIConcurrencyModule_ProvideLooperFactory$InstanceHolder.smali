.class final Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLooperFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "SysUIConcurrencyModule_ProvideLooperFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLooperFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLooperFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLooperFactory;

    invoke-direct {v0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLooperFactory;-><init>()V

    sput-object v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLooperFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLooperFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLooperFactory;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLooperFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule_ProvideLooperFactory;

    return-object v0
.end method
