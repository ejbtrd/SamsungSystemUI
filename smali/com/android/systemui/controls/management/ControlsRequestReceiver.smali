.class public final Lcom/android/systemui/controls/management/ControlsRequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ControlsRequestReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/ControlsRequestReceiver$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsRequestReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsRequestReceiver.kt\ncom/android/systemui/controls/management/ControlsRequestReceiver\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,180:1\n1#2:181\n787#3:182\n815#3,2:183\n1517#3:185\n1588#3,3:186\n1711#3,3:189\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsRequestReceiver.kt\ncom/android/systemui/controls/management/ControlsRequestReceiver\n*L\n150#1:182\n150#1,2:183\n173#1:185\n173#1,3:186\n132#1,3:189\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/management/ControlsRequestReceiver$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private controller:Lcom/android/systemui/controls/controller/ControlsController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private customController:Lcom/android/systemui/controls/controller/CustomControlsController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/management/ControlsRequestReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/ControlsRequestReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->Companion:Lcom/android/systemui/controls/management/ControlsRequestReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/controls/controller/CustomControlsController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/ControlsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/controller/CustomControlsController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/controls/management/ControlsRequestReceiver;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->customController:Lcom/android/systemui/controls/controller/CustomControlsController;

    return-void
.end method

.method private final addFavoritesWithoutDialog(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "android.intent.extra.COMPONENT_NAME"

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const-string v1, "ControlsRequestReceiver"

    if-nez v0, :cond_0

    const-string p0, "Request did not contain componentName"

    .line 139
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->getControls(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 143
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->getControl(Landroid/content/Intent;)Landroid/service/controls/Control;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    const-string p0, "Request did not contain control(s)"

    .line 145
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 149
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->controller:Lcom/android/systemui/controls/controller/ControlsController;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p1, v0}, Lcom/android/systemui/controls/controller/ControlsController;->getFavoritesForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 787
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 815
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/service/controls/Control;

    .line 150
    invoke-static {p1, v4}, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->addFavoritesWithoutDialog$isCurrentFavorite(Ljava/util/List;Landroid/service/controls/Control;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->customController:Lcom/android/systemui/controls/controller/CustomControlsController;

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {p0, v0, v1}, Lcom/android/systemui/controls/controller/CustomControlsController;->addFavorites(Landroid/content/ComponentName;Ljava/util/ArrayList;)V

    :goto_2
    return-void
.end method

.method private static final addFavoritesWithoutDialog$isCurrentFavorite(Ljava/util/List;Landroid/service/controls/Control;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/StructureInfo;",
            ">;",
            "Landroid/service/controls/Control;",
            ")Z"
        }
    .end annotation

    .line 1711
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    goto :goto_1

    .line 1712
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 132
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v0

    .line 1711
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    .line 1712
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 132
    invoke-virtual {v3}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    if-eqz v1, :cond_6

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The control "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already a favorite"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ControlsRequestReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v1
.end method

.method private final getControl(Landroid/content/Intent;)Landroid/service/controls/Control;
    .locals 2

    const-string p0, "android.service.controls.extra.CONTROL"

    .line 159
    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/service/controls/Control;

    if-nez p0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "autoAdd: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ControlsRequestReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private final getControls(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation

    const-string p0, "android.service.controls.extra.CONTROLS"

    .line 171
    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 1517
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1589
    check-cast v1, Landroid/service/controls/Control;

    .line 173
    invoke-virtual {v1}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "autoAddList: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ControlsRequestReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p0

    :cond_2
    :goto_1
    return-object v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.controls"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.extra.COMPONENT_NAME"

    .line 86
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 89
    :goto_0
    sget-boolean v2, Lcom/android/systemui/BasicRune;->CONTROLS_AUTO_ADD:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const-string v3, "android.service.controls.extra.CONTROL_AUTO_ADD"

    .line 91
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_2

    return-void

    .line 106
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->addFavoritesWithoutDialog(Landroid/content/Intent;)V

    return-void

    :cond_3
    if-eqz v1, :cond_5

    .line 111
    sget-object p0, Lcom/android/systemui/controls/management/ControlsRequestReceiver;->Companion:Lcom/android/systemui/controls/management/ControlsRequestReceiver$Companion;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/controls/management/ControlsRequestReceiver$Companion;->isPackageInForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    .line 115
    :cond_4
    new-instance p0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/controls/management/ControlsRequestDialog;

    invoke-direct {p0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.service.controls.extra.CONTROL"

    .line 120
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p2, 0x10020000

    .line 122
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p2

    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    :goto_1
    return-void
.end method
