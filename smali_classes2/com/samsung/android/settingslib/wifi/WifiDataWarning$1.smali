.class Lcom/samsung/android/settingslib/wifi/WifiDataWarning$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDataWarning.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/wifi/WifiDataWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/wifi/WifiDataWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settingslib/wifi/WifiDataWarning;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning$1;->this$0:Lcom/samsung/android/settingslib/wifi/WifiDataWarning;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/samsung/android/settingslib/wifi/WifiDataWarning$1;->this$0:Lcom/samsung/android/settingslib/wifi/WifiDataWarning;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settingslib/wifi/WifiDataWarning;->access$000(Lcom/samsung/android/settingslib/wifi/WifiDataWarning;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
