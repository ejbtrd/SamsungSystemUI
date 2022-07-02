.class Lcom/android/systemui/statusbar/policy/NetspeedView$2;
.super Ljava/lang/Object;
.source "NetspeedView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedWakingUp()V
    .locals 2

    const-string v0, "NetworkSpeedView"

    const-string/jumbo v1, "mWakefulnessObserver onFinishedWakingUp "

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$502(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z

    .line 154
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$600(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    return-void
.end method

.method public onStartedGoingToSleep()V
    .locals 2

    const-string v0, "NetworkSpeedView"

    const-string/jumbo v1, "mWakefulnessObserver onStartedGoingToSleep "

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$502(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z

    .line 161
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$2;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->access$600(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    return-void
.end method
