.class Lcom/android/keyguard/CarrierTextManager$4;
.super Lcom/android/systemui/knox/KnoxStateMonitorCallback;
.source "CarrierTextManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierTextManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CarrierTextManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CarrierTextManager;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextManager$4;->this$0:Lcom/android/keyguard/CarrierTextManager;

    invoke-direct {p0}, Lcom/android/systemui/knox/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateLockscreenHiddenItems()V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/keyguard/CarrierTextManager$4;->this$0:Lcom/android/keyguard/CarrierTextManager;

    invoke-virtual {p0}, Lcom/android/keyguard/CarrierTextManager;->updateCarrierText()V

    return-void
.end method
