.class public final Lcom/android/systemui/controls/ui/ChallengeDialogs;
.super Ljava/lang/Object;
.source "ChallengeDialogs.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChallengeDialogs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChallengeDialogs.kt\ncom/android/systemui/controls/ui/ChallengeDialogs\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,330:1\n1#2:331\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STYLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/controls/ui/ChallengeDialogs;

    invoke-direct {v0}, Lcom/android/systemui/controls/ui/ChallengeDialogs;-><init>()V

    sput-object v0, Lcom/android/systemui/controls/ui/ChallengeDialogs;->INSTANCE:Lcom/android/systemui/controls/ui/ChallengeDialogs;

    .line 51
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    if-eqz v0, :cond_0

    .line 52
    sget v0, Lcom/android/systemui/R$style;->Theme_AppCompat_DayNight_Dialog_Alert:I

    goto :goto_0

    :cond_0
    const v0, 0x10302d1

    .line 51
    :goto_0
    sput v0, Lcom/android/systemui/controls/ui/ChallengeDialogs;->STYLE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$addChallengeValue(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/service/controls/actions/ControlAction;Ljava/lang/String;)Landroid/service/controls/actions/ControlAction;
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->addChallengeValue(Landroid/service/controls/actions/ControlAction;Ljava/lang/String;)Landroid/service/controls/actions/ControlAction;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setInputType(Lcom/android/systemui/controls/ui/ChallengeDialogs;Landroid/widget/EditText;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->setInputType(Landroid/widget/EditText;Z)V

    return-void
.end method

.method private final addChallengeValue(Landroid/service/controls/actions/ControlAction;Ljava/lang/String;)Landroid/service/controls/actions/ControlAction;
    .locals 1

    .line 320
    invoke-virtual {p1}, Landroid/service/controls/actions/ControlAction;->getTemplateId()Ljava/lang/String;

    move-result-object p0

    .line 322
    instance-of v0, p1, Landroid/service/controls/actions/BooleanAction;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/service/controls/actions/BooleanAction;

    check-cast p1, Landroid/service/controls/actions/BooleanAction;

    invoke-virtual {p1}, Landroid/service/controls/actions/BooleanAction;->getNewState()Z

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/service/controls/actions/BooleanAction;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_0
    instance-of v0, p1, Landroid/service/controls/actions/FloatAction;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/service/controls/actions/FloatAction;

    check-cast p1, Landroid/service/controls/actions/FloatAction;

    invoke-virtual {p1}, Landroid/service/controls/actions/FloatAction;->getNewValue()F

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/service/controls/actions/FloatAction;-><init>(Ljava/lang/String;FLjava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_1
    instance-of v0, p1, Landroid/service/controls/actions/CommandAction;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/service/controls/actions/CommandAction;

    invoke-direct {v0, p0, p2}, Landroid/service/controls/actions/CommandAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_2
    instance-of v0, p1, Landroid/service/controls/actions/ModeAction;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/service/controls/actions/ModeAction;

    check-cast p1, Landroid/service/controls/actions/ModeAction;

    invoke-virtual {p1}, Landroid/service/controls/actions/ModeAction;->getNewMode()I

    move-result p1

    invoke-direct {v0, p0, p1, p2}, Landroid/service/controls/actions/ModeAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-object v0

    .line 326
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "\'action\' is not a known type: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final createCustomConfirmationDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;Lkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLastAction()Landroid/service/controls/actions/ControlAction;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "ControlsUiController"

    const-string p1, "Confirmation Dialog attempted but no last action is set. Will not show"

    .line 274
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 279
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/controls/ui/ChallengeDialogs;->STYLE:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 280
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 282
    sget v2, Lcom/android/systemui/R$string;->controls_custom_confirmation_message:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    .line 281
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 284
    sget v1, Lcom/android/systemui/R$string;->controls_custom_dialog_ok:I

    .line 285
    new-instance v2, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomConfirmationDialog$builder$1$1;

    invoke-direct {v2, p1, p0}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomConfirmationDialog$builder$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;)V

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    sget p0, Lcom/android/systemui/R$string;->controls_custom_dialog_cancel:I

    .line 291
    new-instance p1, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomConfirmationDialog$builder$1$2;

    invoke-direct {p1, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomConfirmationDialog$builder$1$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 289
    invoke-virtual {v0, p0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 298
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7e4

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 299
    new-instance p1, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomConfirmationDialog$1$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomConfirmationDialog$1$2;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p0
.end method

.method private final createCustomPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            "ZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLastAction()Landroid/service/controls/actions/ControlAction;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "ControlsUiController"

    const-string p1, "PIN Dialog attempted but no last action is set. Will not show"

    .line 149
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p3, :cond_1

    .line 155
    new-instance v4, Lkotlin/Pair;

    .line 156
    sget v5, Lcom/android/systemui/R$string;->controls_custom_pin_verify:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v1, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 157
    sget v2, Lcom/android/systemui/R$string;->controls_custom_pin_instructions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 155
    invoke-direct {v4, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :cond_1
    new-instance v4, Lkotlin/Pair;

    .line 161
    sget v5, Lcom/android/systemui/R$string;->controls_custom_pin_verify:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v1, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 162
    sget v2, Lcom/android/systemui/R$string;->controls_custom_pin_instructions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 160
    invoke-direct {v4, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    :goto_0
    invoke-virtual {v4}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 165
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/controls/ui/ChallengeDialogs;->STYLE:I

    new-instance v5, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;

    invoke-direct {v5, v3, v4}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;-><init>(Landroid/content/Context;I)V

    .line 175
    invoke-virtual {v5, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$layout;->controls_custom_dialog_pin:I

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 179
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$string;->controls_custom_dialog_ok:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 180
    new-instance v3, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$1;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;)V

    .line 177
    invoke-virtual {v5, v0, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p0, -0x2

    .line 191
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->controls_custom_dialog_cancel:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 192
    new-instance v0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$2;

    invoke-direct {v0, p4}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 189
    invoke-virtual {v5, p0, p1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 198
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7e4

    .line 199
    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    const/4 p1, 0x4

    .line 200
    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 202
    new-instance p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;

    invoke-direct {p0, v5, v2, p3, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$2$4;-><init>(Lcom/android/systemui/controls/ui/ChallengeDialogs$createCustomPinDialog$1;IZZ)V

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v5
.end method

.method private final setInputType(Landroid/widget/EditText;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const/16 p0, 0x81

    .line 311
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x12

    .line 314
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setInputType(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final createConfirmationDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;Lkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "cvh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCancel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->createCustomConfirmationDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;Lkotlin/jvm/functions/Function0;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 237
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLastAction()Landroid/service/controls/actions/ControlAction;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "ControlsUiController"

    const-string p1, "Confirmation Dialog attempted but no last action is set. Will not show"

    .line 239
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 243
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/controls/ui/ChallengeDialogs;->STYLE:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 244
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 246
    sget v2, Lcom/android/systemui/R$string;->controls_confirmation_message:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    .line 245
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    .line 249
    new-instance v2, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$builder$1$1;

    invoke-direct {v2, p1, p0}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$builder$1$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;)V

    .line 247
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p0, 0x1040000

    .line 255
    new-instance p1, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$builder$1$2;

    invoke-direct {p1, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createConfirmationDialog$builder$1$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 253
    invoke-virtual {v0, p0, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 262
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7e4

    .line 263
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    return-object p0
.end method

.method public final createPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Lcom/android/systemui/controls/ui/ControlViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            "ZZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "cvh"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onCancel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_STYLE:Z

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/controls/ui/ChallengeDialogs;->createCustomPinDialog(Lcom/android/systemui/controls/ui/ControlViewHolder;ZZLkotlin/jvm/functions/Function0;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getLastAction()Landroid/service/controls/actions/ControlAction;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const-string p0, "ControlsUiController"

    const-string p1, "PIN Dialog attempted but no last action is set. Will not show"

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p3, :cond_2

    .line 80
    new-instance p3, Lkotlin/Pair;

    .line 81
    sget v2, Lcom/android/systemui/R$string;->controls_pin_wrong:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    sget v2, Lcom/android/systemui/R$string;->controls_pin_instructions_retry:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 80
    invoke-direct {p3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_2
    new-instance p3, Lkotlin/Pair;

    .line 86
    sget v2, Lcom/android/systemui/R$string;->controls_pin_verify:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getTitle()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 87
    sget v2, Lcom/android/systemui/R$string;->controls_pin_instructions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 85
    invoke-direct {p3, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    :goto_0
    invoke-virtual {p3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 90
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/systemui/controls/ui/ChallengeDialogs;->STYLE:I

    new-instance v4, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$1;

    invoke-direct {v4, v2, v3}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$1;-><init>(Landroid/content/Context;I)V

    .line 100
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->controls_dialog_pin:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 104
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 105
    new-instance v2, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;

    invoke-direct {v2, p1, p0}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Landroid/service/controls/actions/ControlAction;)V

    .line 102
    invoke-virtual {v4, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p0, -0x2

    .line 116
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 117
    new-instance v0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$2;

    invoke-direct {v0, p4}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 114
    invoke-virtual {v4, p0, p1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 123
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7e4

    .line 124
    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    const/4 p1, 0x4

    .line 125
    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 127
    new-instance p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;

    invoke-direct {p0, v4, p3, p2}, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4;-><init>(Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$1;IZ)V

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v4
.end method
