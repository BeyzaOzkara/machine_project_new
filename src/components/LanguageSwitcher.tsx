import { Globe } from 'lucide-react';
import { useTranslation } from 'react-i18next';

export default function LanguageSwitcher() {
  const { i18n } = useTranslation();

  const toggleLanguage = () => {
    const newLang = i18n.language === 'tr' ? 'en' : 'tr';
    i18n.changeLanguage(newLang);
  };

  return (
    <button
      onClick={toggleLanguage}
      className="flex items-center space-x-2 px-3 py-2 bg-gray-100 hover:bg-gray-200 rounded-lg transition-colors"
      title={i18n.language === 'tr' ? 'Switch to English' : 'Türkçeye Geç'}
    >
      <Globe className="w-4 h-4" />
      <span className="text-sm font-medium uppercase">{i18n.language}</span>
    </button>
  );
}
