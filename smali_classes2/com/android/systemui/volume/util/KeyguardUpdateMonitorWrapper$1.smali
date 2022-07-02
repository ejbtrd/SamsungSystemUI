.class Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardUpdateMonitorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;->registerCallback(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

.field final synthetic val$userSwitchRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;Ljava/lang/Runnable;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper$1;->this$0:Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper;

    iput-object p2, p0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper$1;->val$userSwitchRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/volume/util/KeyguardUpdateMonitorWrapper$1;->val$userSwitchRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
