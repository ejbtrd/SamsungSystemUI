.class public final Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule;
.super Ljava/lang/Object;
.source "NotificationSectionHeadersModule.kt"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule;->INSTANCE:Lcom/android/systemui/statusbar/notification/dagger/NotificationSectionHeadersModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final providesAlertingHeaderController(Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "subcomponent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;->getHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object p0

    return-object p0
.end method

.method public static final providesAlertingHeaderNodeController(Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;)Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "subcomponent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;->getNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object p0

    return-object p0
.end method

.method public static final providesAlertingHeaderSubcomponent(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
    .locals 1
    .param p0    # Ljavax/inject/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    const-string v0, "alerting header"

    .line 55
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->nodeLabel(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    move-result-object p0

    .line 56
    sget v0, Lcom/android/systemui/R$string;->notification_section_header_alerting:I

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->headerText(I)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    move-result-object p0

    const-string v0, "android.settings.NOTIFICATION_SETTINGS"

    .line 57
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->clickIntentAction(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    move-result-object p0

    .line 58
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->build()Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;

    move-result-object p0

    return-object p0
.end method

.method public static final providesIncomingHeaderController(Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "subcomponent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;->getHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object p0

    return-object p0
.end method

.method public static final providesIncomingHeaderNodeController(Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;)Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "subcomponent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;->getNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object p0

    return-object p0
.end method

.method public static final providesIncomingHeaderSubcomponent(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
    .locals 1
    .param p0    # Ljavax/inject/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    const-string v0, "incoming header"

    .line 44
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->nodeLabel(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    move-result-object p0

    .line 45
    sget v0, Lcom/android/systemui/R$string;->notification_section_header_incoming:I

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->headerText(I)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    move-result-object p0

    const-string v0, "android.settings.NOTIFICATION_SETTINGS"

    .line 46
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->clickIntentAction(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    move-result-object p0

    .line 47
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->build()Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;

    move-result-object p0

    return-object p0
.end method

.method public static final providesPeopleHeaderController(Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "subcomponent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;->getHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object p0

    return-object p0
.end method

.method public static final providesPeopleHeaderNodeController(Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;)Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "subcomponent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;->getNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object p0

    return-object p0
.end method

.method public static final providesPeopleHeaderSubcomponent(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
    .locals 1
    .param p0    # Ljavax/inject/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    const-string/jumbo v0, "people header"

    .line 66
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->nodeLabel(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    move-result-object p0

    .line 67
    sget v0, Lcom/android/systemui/R$string;->notification_section_header_conversations:I

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->headerText(I)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    move-result-object p0

    const-string v0, "android.settings.CONVERSATION_SETTINGS"

    .line 68
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->clickIntentAction(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    move-result-object p0

    .line 69
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->build()Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;

    move-result-object p0

    return-object p0
.end method

.method public static final providesSilentHeaderController(Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;)Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "subcomponent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;->getHeaderController()Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-result-object p0

    return-object p0
.end method

.method public static final providesSilentHeaderNodeController(Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;)Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "subcomponent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;->getNodeController()Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    move-result-object p0

    return-object p0
.end method

.method public static final providesSilentHeaderSubcomponent(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;
    .locals 1
    .param p0    # Ljavax/inject/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "builder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    const-string/jumbo v0, "silent header"

    .line 77
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->nodeLabel(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    move-result-object p0

    .line 78
    sget v0, Lcom/android/systemui/R$string;->notification_section_header_gentle:I

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->headerText(I)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    move-result-object p0

    const-string v0, "android.settings.NOTIFICATION_SETTINGS"

    .line 79
    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->clickIntentAction(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;

    move-result-object p0

    .line 80
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent$Builder;->build()Lcom/android/systemui/statusbar/notification/dagger/SectionHeaderControllerSubcomponent;

    move-result-object p0

    return-object p0
.end method
