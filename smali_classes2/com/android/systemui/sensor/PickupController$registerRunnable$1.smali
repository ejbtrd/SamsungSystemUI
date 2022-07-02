.class final Lcom/android/systemui/sensor/PickupController$registerRunnable$1;
.super Ljava/lang/Object;
.source "PickupController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sensor/PickupController;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sensor/PickupController;


# direct methods
.method constructor <init>(Lcom/android/systemui/sensor/PickupController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sensor/PickupController$registerRunnable$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/sensor/PickupController$registerRunnable$1;->this$0:Lcom/android/systemui/sensor/PickupController;

    invoke-static {p0}, Lcom/android/systemui/sensor/PickupController;->access$registerSensor(Lcom/android/systemui/sensor/PickupController;)V

    return-void
.end method
