.class Lcom/android/systemui/cover/CoverScreenManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "CoverScreenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/CoverScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cover/CoverScreenManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/cover/CoverScreenManager;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockDisabledChanged(Z)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {v0}, Lcom/android/systemui/cover/CoverScreenManager;->access$100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {v0}, Lcom/android/systemui/cover/CoverScreenManager;->access$100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {v0}, Lcom/android/systemui/cover/CoverScreenManager;->access$100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/cover/CoverScreenManager;->access$300(Lcom/android/systemui/cover/CoverScreenManager;Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p0, p1}, Lcom/android/systemui/cover/CoverScreenManager;->access$600(Lcom/android/systemui/cover/CoverScreenManager;Z)V

    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3

    .line 155
    invoke-static {}, Lcom/android/systemui/cover/CoverScreenManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitchComplete() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mCoverState = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->access$100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->access$100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->access$100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    .line 157
    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->access$100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/cover/CoverScreenManager;->access$200(Lcom/android/systemui/cover/CoverScreenManager;Lcom/samsung/android/cover/CoverState;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p1}, Lcom/android/systemui/cover/CoverScreenManager;->access$100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/cover/CoverScreenManager;->access$300(Lcom/android/systemui/cover/CoverScreenManager;Lcom/samsung/android/cover/CoverState;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p0}, Lcom/android/systemui/cover/CoverScreenManager;->access$400(Lcom/android/systemui/cover/CoverScreenManager;)V

    :cond_1
    return-void
.end method

.method public onUserUnlocked()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {v0}, Lcom/android/systemui/cover/CoverScreenManager;->access$100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {v0}, Lcom/android/systemui/cover/CoverScreenManager;->access$100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {v0}, Lcom/android/systemui/cover/CoverScreenManager;->access$100(Lcom/android/systemui/cover/CoverScreenManager;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/cover/CoverScreenManager;->access$300(Lcom/android/systemui/cover/CoverScreenManager;Lcom/samsung/android/cover/CoverState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object p0, p0, Lcom/android/systemui/cover/CoverScreenManager$1;->this$0:Lcom/android/systemui/cover/CoverScreenManager;

    invoke-static {p0}, Lcom/android/systemui/cover/CoverScreenManager;->access$500(Lcom/android/systemui/cover/CoverScreenManager;)V

    :cond_0
    return-void
.end method
