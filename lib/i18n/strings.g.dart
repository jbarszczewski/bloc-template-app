/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 25 (12 per locale)
///
/// Built on 2024-07-18 at 12:49 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	en(languageCode: 'en', build: Translations.build),
	pl(languageCode: 'pl', build: _StringsPl.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	Map<String, String> get locales => {
		'en': '🇬🇧 English (UK)',
		'pl': '🇵🇱 Polski',
	};
	String get appTitle => 'Bloc Template';
	late final _StringsItemsListEn itemsList = _StringsItemsListEn._(_root);
	late final _StringsItemDetailsEn itemDetails = _StringsItemDetailsEn._(_root);
	late final _StringsSettingsEn settings = _StringsSettingsEn._(_root);
}

// Path: itemsList
class _StringsItemsListEn {
	_StringsItemsListEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Items';
	String get sampleItemTitle => 'Sample item {itemId}';
	String get refreshButton => 'Refresh list';
}

// Path: itemDetails
class _StringsItemDetailsEn {
	_StringsItemDetailsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Item details';
	String get detailsPlaceholder => 'Details for item {itemId}';
	String get markAsCompletedButton => 'Mark as completed';
}

// Path: settings
class _StringsSettingsEn {
	_StringsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Settings';
	late final _StringsSettingsThemesEn themes = _StringsSettingsThemesEn._(_root);
}

// Path: settings.themes
class _StringsSettingsThemesEn {
	_StringsSettingsThemesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select a theme';
	late final _StringsSettingsThemesOptionsEn options = _StringsSettingsThemesOptionsEn._(_root);
}

// Path: settings.themes.options
class _StringsSettingsThemesOptionsEn {
	_StringsSettingsThemesOptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get light => 'Light';
	String get dark => 'Dark';
	String get system => 'System';
}

// Path: <root>
class _StringsPl implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsPl.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.pl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsPl _root = this; // ignore: unused_field

	// Translations
	@override String get appTitle => 'Bloc Template (pl)';
	@override late final _StringsItemsListPl itemsList = _StringsItemsListPl._(_root);
	@override late final _StringsItemDetailsPl itemDetails = _StringsItemDetailsPl._(_root);
	@override late final _StringsSettingsPl settings = _StringsSettingsPl._(_root);
}

// Path: itemsList
class _StringsItemsListPl implements _StringsItemsListEn {
	_StringsItemsListPl._(this._root);

	@override final _StringsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pozycje';
	@override String get sampleItemTitle => 'Przykladowa pozycja {itemId}';
	@override String get refreshButton => 'Odswiez';
}

// Path: itemDetails
class _StringsItemDetailsPl implements _StringsItemDetailsEn {
	_StringsItemDetailsPl._(this._root);

	@override final _StringsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Szczegoly';
	@override String get detailsPlaceholder => 'Szczegoly pozycji {itemId}';
}

// Path: settings
class _StringsSettingsPl implements _StringsSettingsEn {
	_StringsSettingsPl._(this._root);

	@override final _StringsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ustawienia';
	@override late final _StringsSettingsThemesPl themes = _StringsSettingsThemesPl._(_root);
}

// Path: settings.themes
class _StringsSettingsThemesPl implements _StringsSettingsThemesEn {
	_StringsSettingsThemesPl._(this._root);

	@override final _StringsPl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Wybierz motyw';
	@override late final _StringsSettingsThemesOptionsPl options = _StringsSettingsThemesOptionsPl._(_root);
}

// Path: settings.themes.options
class _StringsSettingsThemesOptionsPl implements _StringsSettingsThemesOptionsEn {
	_StringsSettingsThemesOptionsPl._(this._root);

	@override final _StringsPl _root; // ignore: unused_field

	// Translations
	@override String get light => 'Jasny';
	@override String get dark => 'Ciemny';
	@override String get system => 'Systemowy';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'locales.en': return '🇬🇧 English (UK)';
			case 'locales.pl': return '🇵🇱 Polski';
			case 'appTitle': return 'Bloc Template';
			case 'itemsList.title': return 'Items';
			case 'itemsList.sampleItemTitle': return 'Sample item {itemId}';
			case 'itemsList.refreshButton': return 'Refresh list';
			case 'itemDetails.title': return 'Item details';
			case 'itemDetails.detailsPlaceholder': return 'Details for item {itemId}';
			case 'itemDetails.markAsCompletedButton': return 'Mark as completed';
			case 'settings.title': return 'Settings';
			case 'settings.themes.title': return 'Select a theme';
			case 'settings.themes.options.light': return 'Light';
			case 'settings.themes.options.dark': return 'Dark';
			case 'settings.themes.options.system': return 'System';
			default: return null;
		}
	}
}

extension on _StringsPl {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'appTitle': return 'Bloc Template (pl)';
			case 'itemsList.title': return 'Pozycje';
			case 'itemsList.sampleItemTitle': return 'Przykladowa pozycja {itemId}';
			case 'itemsList.refreshButton': return 'Odswiez';
			case 'itemDetails.title': return 'Szczegoly';
			case 'itemDetails.detailsPlaceholder': return 'Szczegoly pozycji {itemId}';
			case 'settings.title': return 'Ustawienia';
			case 'settings.themes.title': return 'Wybierz motyw';
			case 'settings.themes.options.light': return 'Jasny';
			case 'settings.themes.options.dark': return 'Ciemny';
			case 'settings.themes.options.system': return 'Systemowy';
			default: return null;
		}
	}
}
