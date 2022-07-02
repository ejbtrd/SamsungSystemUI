.class Lcom/android/systemui/knox/ContainerMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "ContainerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/knox/ContainerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/knox/ContainerMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/knox/ContainerMonitor;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$1;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.knox.securefolder.SETUP_COMPLETE"

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const-string/jumbo v0, "userId"

    const/4 v1, -0x1

    .line 198
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const-string v1, "android.intent.extra.USER"

    .line 201
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    if-eqz p2, :cond_1

    .line 203
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 206
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive : Intent Action  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,User: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContainerMonitor"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$1;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/knox/ContainerMonitor;->isPersona(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 208
    iget-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$1;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$100(Lcom/android/systemui/knox/ContainerMonitor;)Landroid/os/UserManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/systemui/knox/ContainerMonitor;->access$002(Lcom/android/systemui/knox/ContainerMonitor;Ljava/util/List;)Ljava/util/List;

    .line 209
    iget-object p1, p0, Lcom/android/systemui/knox/ContainerMonitor$1;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p1}, Lcom/android/systemui/knox/ContainerMonitor;->access$200(Lcom/android/systemui/knox/ContainerMonitor;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add a PersonaObserver for newly added user "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/knox/ContainerMonitor$1;->this$0:Lcom/android/systemui/knox/ContainerMonitor;

    invoke-static {p0, v0}, Lcom/android/systemui/knox/ContainerMonitor;->access$300(Lcom/android/systemui/knox/ContainerMonitor;I)V

    :cond_3
    return-void
.end method
