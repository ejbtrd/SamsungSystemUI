.class final Lcom/android/systemui/edgelighting/SystemUIConditionListenerService_Factory$InstanceHolder;
.super Ljava/lang/Object;
.source "SystemUIConditionListenerService_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/SystemUIConditionListenerService_Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/edgelighting/SystemUIConditionListenerService_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService_Factory;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/edgelighting/SystemUIConditionListenerService_Factory;

    return-void
.end method

.method static synthetic access$000()Lcom/android/systemui/edgelighting/SystemUIConditionListenerService_Factory;
    .locals 1

    .line 28
    sget-object v0, Lcom/android/systemui/edgelighting/SystemUIConditionListenerService_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/edgelighting/SystemUIConditionListenerService_Factory;

    return-object v0
.end method
