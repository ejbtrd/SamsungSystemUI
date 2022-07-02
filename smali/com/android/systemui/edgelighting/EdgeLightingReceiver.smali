.class public Lcom/android/systemui/edgelighting/EdgeLightingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EdgeLightingReceiver.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 55
    new-instance v0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver$1;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/edgelighting/EdgeLightingReceiver;Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/Class;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->registerBroadcastReceiver(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/Class;)V

    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 197
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private registerBroadcastReceiver(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentFilter;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/content/IntentFilter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string/jumbo p0, "semeventdelegator"

    .line 214
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sepunion/SemEventDelegationManager;

    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 p2, 0x0

    const/high16 p4, 0xa000000

    .line 217
    invoke-static {p1, p2, v0, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 220
    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/sepunion/SemEventDelegationManager;->registerIntentFilter(Landroid/content/IntentFilter;Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EdgeLightingReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.android.app.edgelighting.PACKAGE_ADDED"

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "pkg_name"

    if-eqz v1, :cond_0

    .line 160
    invoke-direct {p0, p2}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 165
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_0
    const-string v1, "com.samsung.android.app.edgelighting.PACKAGE_REMOVED"

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-direct {p0, p2}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 172
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.android.app.edgelighting.PACKAGE_REPLACED"

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    invoke-direct {p0, p2}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    .line 175
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 178
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 179
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 181
    invoke-direct {p0, p2}, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 186
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo p2, "sec.app.policy.UPDATE.EdgeLighting"

    .line 187
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 188
    iget-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 189
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 190
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 191
    iget-object p2, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 192
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_0
    return-void
.end method
