.class public final Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;
.super Ljava/lang/Object;
.source "LatinNetworkNameUtil.kt"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellBroadcastServiceConnection"
.end annotation


# instance fields
.field private mService:Landroid/os/IBinder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mTag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LatinUtil.CellBroadcastServiceConnection: "

    .line 241
    iput-object v0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMService()Landroid/os/IBinder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 242
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;->mTag:Ljava/lang/String;

    const-string p1, "Binding died"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;->mTag:Ljava/lang/String;

    const-string p1, "Null binding"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "service"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;->mTag:Ljava/lang/String;

    const-string v0, "connected to CellBroadcastService"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iput-object p2, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "arg0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;->mTag:Ljava/lang/String;

    const-string v0, "mICellBroadcastService has disconnected unexpectedly"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 251
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/LatinNetworkNameUtil$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    return-void
.end method
