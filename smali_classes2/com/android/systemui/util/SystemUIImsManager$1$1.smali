.class Lcom/android/systemui/util/SystemUIImsManager$1$1;
.super Ljava/lang/Object;
.source "SystemUIImsManager.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/SystemUIImsManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/util/SystemUIImsManager$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/SystemUIImsManager$1;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnected mImsManager : slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$200(Lcom/android/systemui/util/SystemUIImsManager;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 93
    iget-object v0, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    new-instance v3, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    iget-object v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-direct {v3, v1}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;-><init>(Lcom/android/systemui/util/SystemUIImsManager;)V

    aput-object v3, v0, v2

    .line 94
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 95
    iget-object v0, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    new-instance v2, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    iget-object v3, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v3, v3, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;-><init>(Lcom/android/systemui/util/SystemUIImsManager;Lcom/android/systemui/util/SystemUIImsManager$1;)V

    aput-object v2, v0, v1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;->setSlotId(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget-object v0, v0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$000(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget v2, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v0, v0, v2

    iget-object v1, v1, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v1}, Lcom/android/systemui/util/SystemUIImsManager;->access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/util/SystemUIImsManager$1$1;->this$1:Lcom/android/systemui/util/SystemUIImsManager$1;

    iget p0, p0, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object v1, v1, p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method
