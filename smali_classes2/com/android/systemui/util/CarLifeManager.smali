.class public Lcom/android/systemui/util/CarLifeManager;
.super Ljava/lang/Object;
.source "CarLifeManager.java"


# instance fields
.field private final mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/util/CarLifeManager;->mDisplayLifeCycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    return-void
.end method
