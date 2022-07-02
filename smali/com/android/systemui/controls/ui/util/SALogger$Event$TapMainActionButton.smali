.class public final Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMainActionButton;
.super Lcom/android/systemui/controls/ui/util/SALogger$Event;
.source "SALogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/ui/util/SALogger$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TapMainActionButton"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSALogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SALogger.kt\ncom/android/systemui/controls/ui/util/SALogger$Event$TapMainActionButton\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,316:1\n1#2:317\n*E\n"
.end annotation


# instance fields
.field private final cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cvh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMainActionButton;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    return-void
.end method


# virtual methods
.method public sendEvent(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;)V
    .locals 10
    .param p1    # Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "systemUIAnalyticsWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v2, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$MainScreen;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId$MainScreen;

    .line 175
    sget-object v3, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapMainActionButton;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId$TapMainActionButton;

    .line 176
    sget-object v4, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$Template;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$Template;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMainActionButton;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getBehavior()Lcom/android/systemui/controls/ui/Behavior;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/util/SALogger$Event;->getTemplateType(Lcom/android/systemui/controls/ui/Behavior;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v0

    .line 178
    :goto_1
    sget-object v6, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$DeviceName;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$DeviceName;

    .line 179
    iget-object v0, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMainActionButton;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 180
    sget-object v8, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$DeviceType;->INSTANCE:Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId$DeviceType;

    .line 181
    iget-object p0, p0, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapMainActionButton;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v1, p1

    .line 173
    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper;->sendEventCDLog(Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$ScreenId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$EventId;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;Ljava/lang/String;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;Ljava/lang/String;Lcom/android/systemui/controls/ui/util/SystemUIAnalyticsWrapper$KeyId;Ljava/lang/String;)V

    return-void
.end method
